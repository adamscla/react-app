import { render, screen } from '@testing-library/react';
import App from './App';

test('renders learn react link', () => {
	render(<App />);
	const linkElement = screen.getByText(/learn github actions - docker test/i);
	expect(linkElement).toBeInTheDocument();
});
